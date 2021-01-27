using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class mig3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFiles_AspNetUsers_AppUserId",
                table: "AppUserCVFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFiles_CVFiles_CVFileId",
                table: "AppUserCVFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CVFiles",
                table: "CVFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AppUserCVFiles",
                table: "AppUserCVFiles");

            migrationBuilder.RenameTable(
                name: "CVFiles",
                newName: "CVFile");

            migrationBuilder.RenameTable(
                name: "AppUserCVFiles",
                newName: "AppUserCVFile");

            migrationBuilder.RenameIndex(
                name: "IX_AppUserCVFiles_CVFileId",
                table: "AppUserCVFile",
                newName: "IX_AppUserCVFile_CVFileId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CVFile",
                table: "CVFile",
                column: "ID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AppUserCVFile",
                table: "AppUserCVFile",
                columns: new[] { "AppUserId", "CVFileId" });

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCVFile_AspNetUsers_AppUserId",
                table: "AppUserCVFile",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCVFile_CVFile_CVFileId",
                table: "AppUserCVFile",
                column: "CVFileId",
                principalTable: "CVFile",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFile_AspNetUsers_AppUserId",
                table: "AppUserCVFile");

            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFile_CVFile_CVFileId",
                table: "AppUserCVFile");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CVFile",
                table: "CVFile");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AppUserCVFile",
                table: "AppUserCVFile");

            migrationBuilder.RenameTable(
                name: "CVFile",
                newName: "CVFiles");

            migrationBuilder.RenameTable(
                name: "AppUserCVFile",
                newName: "AppUserCVFiles");

            migrationBuilder.RenameIndex(
                name: "IX_AppUserCVFile_CVFileId",
                table: "AppUserCVFiles",
                newName: "IX_AppUserCVFiles_CVFileId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CVFiles",
                table: "CVFiles",
                column: "ID");

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
    }
}
