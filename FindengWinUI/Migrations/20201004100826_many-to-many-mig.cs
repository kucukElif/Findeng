using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class manytomanymig : Migration
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
                name: "AppUserId",
                table: "CVFiles");

            migrationBuilder.DropColumn(
                name: "file",
                table: "CVFiles");

            migrationBuilder.AddColumn<string>(
                name: "CVfile",
                table: "CVFiles",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "appUserCVFiles",
                columns: table => new
                {
                    AppUserId = table.Column<Guid>(nullable: false),
                    CVFileId = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_appUserCVFiles", x => new { x.AppUserId, x.CVFileId });
                    table.ForeignKey(
                        name: "FK_appUserCVFiles_AspNetUsers_AppUserId",
                        column: x => x.AppUserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_appUserCVFiles_CVFiles_CVFileId",
                        column: x => x.CVFileId,
                        principalTable: "CVFiles",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_appUserCVFiles_CVFileId",
                table: "appUserCVFiles",
                column: "CVFileId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "appUserCVFiles");

            migrationBuilder.DropColumn(
                name: "CVfile",
                table: "CVFiles");

            migrationBuilder.AddColumn<Guid>(
                name: "AppUserId",
                table: "CVFiles",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<string>(
                name: "file",
                table: "CVFiles",
                type: "nvarchar(max)",
                nullable: true);

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
    }
}
