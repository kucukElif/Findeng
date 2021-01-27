using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class mig2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_appUserCVFiles_AspNetUsers_AppUserId",
                table: "appUserCVFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_appUserCVFiles_CVFiles_CVFileId",
                table: "appUserCVFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_appUserCVFiles",
                table: "appUserCVFiles");

            migrationBuilder.RenameTable(
                name: "appUserCVFiles",
                newName: "AppUserCVFiles");

            migrationBuilder.RenameIndex(
                name: "IX_appUserCVFiles_CVFileId",
                table: "AppUserCVFiles",
                newName: "IX_AppUserCVFiles_CVFileId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AppUserCVFiles",
                table: "AppUserCVFiles",
                columns: new[] { "AppUserId", "CVFileId" });

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCVFiles_AspNetUsers_AppUserId",
                table: "AppUserCVFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCVFiles_CVFiles_CVFileId",
                table: "AppUserCVFiles",
                column: "CVFileId",
                principalTable: "CVFiles",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFiles_AspNetUsers_AppUserId",
                table: "AppUserCVFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFiles_CVFiles_CVFileId",
                table: "AppUserCVFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AppUserCVFiles",
                table: "AppUserCVFiles");

            migrationBuilder.RenameTable(
                name: "AppUserCVFiles",
                newName: "appUserCVFiles");

            migrationBuilder.RenameIndex(
                name: "IX_AppUserCVFiles_CVFileId",
                table: "appUserCVFiles",
                newName: "IX_appUserCVFiles_CVFileId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_appUserCVFiles",
                table: "appUserCVFiles",
                columns: new[] { "AppUserId", "CVFileId" });

            migrationBuilder.AddForeignKey(
                name: "FK_appUserCVFiles_AspNetUsers_AppUserId",
                table: "appUserCVFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_appUserCVFiles_CVFiles_CVFileId",
                table: "appUserCVFiles",
                column: "CVFileId",
                principalTable: "CVFiles",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
