.class Lcom/android/launcher/model/ChildrenModeManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/model/ChildrenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/model/ChildrenModeManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/model/ChildrenModeManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/model/ChildrenModeManager$1;->this$0:Lcom/android/launcher/model/ChildrenModeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "ChildrenModeManager"

    const-string v0, "Children mode settings changed!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager$1;->this$0:Lcom/android/launcher/model/ChildrenModeManager;

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->access$000(Lcom/android/launcher/model/ChildrenModeManager;)V

    return-void
.end method
