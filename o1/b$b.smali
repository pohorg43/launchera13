.class public Lo1/b$b;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/b;


# direct methods
.method public constructor <init>(Lo1/b;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lo1/b$b;->a:Lo1/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "BrowserLauncherClient"

    const-string v0, "mBrowserContentObserver -- onChange"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/b$b;->a:Lo1/b;

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_14

    const-string/jumbo p0, "updateConnectState -- mLauncher is null."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_14
    invoke-static {v0}, Lo1/e;->f(Landroid/content/Context;)V

    const-string/jumbo p1, "switch"

    invoke-virtual {p0, p1}, Lo1/b;->b(Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
