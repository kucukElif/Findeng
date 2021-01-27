using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class mig55 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles");

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

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

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                type: "uniqueidentifier",
                nullable: false,
                oldClrType: typeof(Guid),
                oldNullable: true);

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
