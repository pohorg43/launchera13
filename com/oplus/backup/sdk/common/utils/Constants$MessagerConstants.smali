.class public final Lcom/oplus/backup/sdk/common/utils/Constants$MessagerConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/common/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagerConstants"
.end annotation


# static fields
.field public static final ARGS_KEY:Ljava/lang/String; = "args"

.field public static final ASYNC:I = 0x0

.field public static final CONFIG_KEY:Ljava/lang/String; = "config"

.field public static final HANDLE_INTENT_MSG:I = 0x0

.field public static final INTENT_BACKUP_APP_DATA:Ljava/lang/String; = "backup_app_data"

.field public static final INTENT_BACKUP_DST_FOLDER:Ljava/lang/String; = "backup_dst_folder"

.field public static final INTENT_BACKUP_RESTORE_APP_DATA_RESULT:Ljava/lang/String; = "backup_restore_app_data_result"

.field public static final INTENT_BACKUP_SRC_FOLDER:Ljava/lang/String; = "backup_src_folder"

.field public static final INTENT_FD_KEY:Ljava/lang/String; = "file_descriptor"

.field public static final INTENT_GET_FD:Ljava/lang/String; = "get_file_descriptor"

.field public static final INTENT_GET_FD_FILE_FLAG:Ljava/lang/String; = "file_flag"

.field public static final INTENT_GET_FD_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final INTENT_INSTALL_APP:Ljava/lang/String; = "install_app"

.field public static final INTENT_INSTALL_APP_FILE_PATH:Ljava/lang/String; = "install_app_file"

.field public static final INTENT_INSTALL_APP_FLAG:Ljava/lang/String; = "install_app_flag"

.field public static final INTENT_INSTALL_APP_PACKAGENAME:Ljava/lang/String; = "install_app_package_name"

.field public static final INTENT_INSTALL_APP_RESULT:Ljava/lang/String; = "install_app_result"

.field public static final INTENT_INVOKE_PLUGIN_METHOD:Ljava/lang/String; = "invoke_plugin_method"

.field public static final INTENT_INVOKE_PLUGIN_METHOD_ARGS:Ljava/lang/String; = "invoke_plugin_method_args"

.field public static final INTENT_INVOKE_PLUGIN_METHOD_NAME:Ljava/lang/String; = "invoke_plugin_method_name"

.field public static final INTENT_INVOKE_PLUGIN_METHOD_PLUGIN_ID:Ljava/lang/String; = "invoke_plugin_method_plugin_id"

.field public static final INTENT_INVOKE_PLUGIN_METHOD_RESULT:Ljava/lang/String; = "invoke_plugin_method_result"

.field public static final INTENT_KEY:Ljava/lang/String; = "intent"

.field public static final INTENT_RESTORE_APP_DATA:Ljava/lang/String; = "restore_app_data"

.field public static final INTENT_RESTORE_DST_FOLDER:Ljava/lang/String; = "restore_dst_folder"

.field public static final INTENT_RESTORE_SRC_FOLDER:Ljava/lang/String; = "restore_src_folder"

.field public static final INTENT_RESTORE_TAR:Ljava/lang/String; = "restore_tar"

.field public static final INTENT_RESTORE_TAR_APP_DATA_DST_FOLDER:Ljava/lang/String; = "restore_tar_app_data_dst_folder"

.field public static final INTENT_RESTORE_TAR_EXCLUDE_ARGS:Ljava/lang/String; = "restore_tar_exclude_agrs"

.field public static final INTENT_RESTORE_TAR_FILE:Ljava/lang/String; = "restore_tar_file"

.field public static final INTENT_RESTORE_TAR_PACKAGE:Ljava/lang/String; = "restore_tar_package"

.field public static final INTENT_RESTORE_TAR_RESULT:Ljava/lang/String; = "restore_tar_result"

.field public static final INTENT_TAR:Ljava/lang/String; = "tar"

.field public static final INTENT_TAR_EXCLUDE_ARGS:Ljava/lang/String; = "tar_exclude_agrs"

.field public static final INTENT_TAR_FILE:Ljava/lang/String; = "tar_file"

.field public static final INTENT_TAR_RESULT:Ljava/lang/String; = "tar_result"

.field public static final INTENT_TAR_SOURCE_FOLDER:Ljava/lang/String; = "tar_source_folder"

.field public static final METHOD_ID_BACKUP:I = 0x7

.field public static final METHOD_ID_CANCEL:I = 0xb

.field public static final METHOD_ID_CONTINUE:I = 0xa

.field public static final METHOD_ID_CREATE:I = 0x5

.field public static final METHOD_ID_DESTROY:I = 0xc

.field public static final METHOD_ID_ERROR:I = 0x4

.field public static final METHOD_ID_HANDLE_MSG:I = 0x2

.field public static final METHOD_ID_INVOKE:I = 0x1

.field public static final METHOD_ID_LOAD:I = 0x0

.field public static final METHOD_ID_PAUSE:I = 0x9

.field public static final METHOD_ID_PREPARE_BACKUP:I = 0x6

.field public static final METHOD_ID_PREVIEW:I = 0xd

.field public static final METHOD_ID_RECEIVE_MSG:I = 0x2

.field public static final METHOD_ID_RESTORE:I = 0x8

.field public static final METHOD_ID_UPDATE_PROGRESS:I = 0x3

.field public static final METHOD_ID_UPDATE_PROTECT_TIME:I = 0xe

.field public static final METHOD_KEY:Ljava/lang/String; = "method"

.field public static final PARAMS_KEY:Ljava/lang/String; = "params"

.field public static final PATH_KEY:Ljava/lang/String; = "path"

.field public static final RETURN_KEY:Ljava/lang/String; = "return"

.field public static final SYNC:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
