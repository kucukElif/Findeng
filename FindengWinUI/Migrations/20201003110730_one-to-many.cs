using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class onetomany : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles");

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);

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

            migrationBuilder.AlterColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid));

            migrationBuilder.AddForeignKey(
                name: "FK_CVFiles_AspNetUsers_AppUserId",
                table: "CVFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
