.class Lcom/android/launcher3/card/CardPermissionManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/CardPermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/CardPermissionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CardPermissionManager$2;->this$0:Lcom/android/launcher3/card/CardPermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/CardPermissionManager$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager$2;->lambda$onListChange$0()V

    return-void
.end method

.method private synthetic lambda$onListChange$0()V
    .registers 2

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/CardManager;->removeCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    return-void
.end method


# virtual methods
.method public onListChange()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager$2;->this$0:Lcom/android/launcher3/card/CardPermissionManager;

    invoke-static {v0}, Lcom/android/launcher3/card/CardPermissionManager;->access$000(Lcom/android/launcher3/card/CardPermissionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/OplusWorkspace;->refreshAllCardForPermissionChanged(ZZ)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/card/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/b;-><init>(Lcom/android/launcher3/card/CardPermissionManager$2;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
