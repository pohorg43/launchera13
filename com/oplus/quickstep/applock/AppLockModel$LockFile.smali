.class public final Lcom/oplus/quickstep/applock/AppLockModel$LockFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/AppLockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockFile"
.end annotation


# static fields
.field public static final BACKUP_LOCKED_APPS:Ljava/lang/String; = "backup_locked_apps.xml"

.field public static final DEFAULT_LOCKED_APPS:Ljava/lang/String; = "default_locked_apps.xml"

.field public static final DEFAULT_TAG:Ljava/lang/String; = "p"

.field public static final FIXED_APPS:Ljava/lang/String; = "fixed_lock_apps.xml"

.field public static final FORBID_APPS:Ljava/lang/String; = "forbid_lock_apps.xml"

.field public static final LOCKED_APPS:Ljava/lang/String; = "locked_apps.xml"

.field public static final LOCK_INFO_SIZE:I = 0x2

.field public static final PATH:Ljava/lang/String;

.field public static final PKG_INDEX:I = 0x0

.field public static final RECENT_TASK_FILES_PATH:Ljava/lang/String; = "/recenttask/"

.field public static final SEPARATOR:Ljava/lang/String; = "#"

.field public static final UID_INDEX:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/oplus/recenttask/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
