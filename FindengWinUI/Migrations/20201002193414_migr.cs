using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class migr : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_CVFiles_CVFileId",
                table: "AspNetUsers");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_CVFileId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "CVFileId",
                table: "AspNetUsers");

            migrationBuilder.AddColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles",
                column: "AppUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropColumn(
                name: "AppUserId",
                table: "CVFiles");

            migrationBuilder.AddColumn<Guid>(
                name: "CVFileId",
                table: "AspNetUsers",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_CVFileId",
                table: "AspNetUsers",
                column: "CVFileId");

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_CVFiles_CVFileId",
                table: "AspNetUsers",
                column: "CVFileId",
                principalTable: "CVFiles",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
