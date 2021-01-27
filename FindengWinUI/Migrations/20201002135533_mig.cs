using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class mig : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles");

            migrationBuilder.DropColumn(
                name: "CVFileId",
                table: "AspNetUsers");

            migrationBuilder.CreateIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles",
                column: "AppUserId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_CVFiles_AppUserId",
                table: "CVFiles");

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
        }
    }
}
