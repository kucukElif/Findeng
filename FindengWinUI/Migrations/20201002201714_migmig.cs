using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class migmig : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropColumn(
                name: "CVFileId",
                table: "AspNetUsers");

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

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
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles");

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(Guid),
                oldNullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "CVFileId",
                table: "AspNetUsers",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles",
                column: "AppUserId",
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
