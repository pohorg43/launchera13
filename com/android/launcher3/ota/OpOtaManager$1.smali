.class Lcom/android/launcher3/ota/OpOtaManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/backup/sdk/component/BRPluginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ota/OpOtaManager;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/ota/OpOtaManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/ota/OpOtaManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager$1;->this$0:Lcom/android/launcher3/ota/OpOtaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public sendMsg(Landroid/content/Intent;Z)V
    .registers 3

    return-void
.end method

.method public updateProgress(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
