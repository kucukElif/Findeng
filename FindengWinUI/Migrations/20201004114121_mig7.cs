using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FindengWinUI.Migrations
{
    public partial class mig7 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFile_AspNetUsers_AppUserId",
                table: "AppUserCVFile");

            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCVFile_CVFile_CVFileId",
                table: "AppUserCVFile");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AppUserCVFile",
                table: "AppUserCVFile");

            migrationBuilder.RenameTable(
                name: "AppUserCVFile",
                newName: "AppUserCvFiles");

            migrationBuilder.RenameColumn(
                name: "CVFileId",
                table: "AppUserCvFiles",
                newName: "CvFileId");

            migrationBuilder.RenameIndex(
                name: "IX_AppUserCVFile_CVFileId",
                table: "AppUserCvFiles",
                newName: "IX_AppUserCvFiles_CvFileId");

            migrationBuilder.AddColumn<Guid>(
                name: "ID",
                table: "AppUserCvFiles",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<string>(
                name: "CreatedAdUserName",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CreatedBy",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CreatedComputerName",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "AppUserCvFiles",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "CreatedIP",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ModifiedAdComputerName",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ModifiedBy",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ModifiedComputerName",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "ModifiedDate",
                table: "AppUserCvFiles",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "ModifiedIP",
                table: "AppUserCvFiles",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "AppUserCvFiles",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddPrimaryKey(
                name: "PK_AppUserCvFiles",
                table: "AppUserCvFiles",
                column: "ID");

            migrationBuilder.CreateIndex(
                name: "IX_AppUserCvFiles_AppUserId",
                table: "AppUserCvFiles",
                column: "AppUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCvFiles_AspNetUsers_AppUserId",
                table: "AppUserCvFiles",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AppUserCvFiles_CVFile_CvFileId",
                table: "AppUserCvFiles",
                column: "CvFileId",
                principalTable: "CVFile",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCvFiles_AspNetUsers_AppUserId",
                table: "AppUserCvFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_AppUserCvFiles_CVFile_CvFileId",
                table: "AppUserCvFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AppUserCvFiles",
                table: "AppUserCvFiles");

            migrationBuilder.DropIndex(
                name: "IX_AppUserCvFiles_AppUserId",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ID",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "CreatedAdUserName",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "CreatedBy",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "CreatedComputerName",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "CreatedIP",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ModifiedAdComputerName",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ModifiedBy",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ModifiedComputerName",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ModifiedDate",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "ModifiedIP",
                table: "AppUserCvFiles");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "AppUserCvFiles");

            migrationBuilder.RenameTable(
                name: "AppUserCvFiles",
                newName: "AppUserCVFile");

            migrationBuilder.RenameColumn(
                name: "CvFileId",
                table: "AppUserCVFile",
                newName: "CVFileId");

            migrationBuilder.RenameIndex(
                name: "IX_AppUserCvFiles_CvFileId",
                table: "AppUserCVFile",
                newName: "IX_AppUserCVFile_CVFileId");

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
    }
}
