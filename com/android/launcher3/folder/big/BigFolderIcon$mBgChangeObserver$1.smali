.class public final Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/BigFolderIcon;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/big/BigFolderIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string p1, "BigFolderIcon"

    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_folder_bg_parameter"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentObserver Wallpaper change received launcher_folder_bg_parameter:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get Settings.Secure  Exception:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$refreshBackground(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method
