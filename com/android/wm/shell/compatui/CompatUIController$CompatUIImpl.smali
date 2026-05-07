.class Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/compatui/CompatUI;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/compatui/CompatUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompatUIImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;Lcom/android/wm/shell/compatui/CompatUIController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->lambda$onKeyguardShowingChanged$0(Z)V

    return-void
.end method

.method private synthetic lambda$onKeyguardShowingChanged$0(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onKeyguardShowingChanged(Z)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-static {v0}, Lcom/android/wm/shell/compatui/CompatUIController;->access$100(Lcom/android/wm/shell/compatui/CompatUIController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/compatui/a;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/compatui/a;-><init>(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
