.class Lcom/android/launcher3/OplusWorkspace$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/android/launcher3/OplusWorkspace;->access$700(Lcom/android/launcher3/OplusWorkspace;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v1}, Lcom/android/launcher3/OplusWorkspace;->access$500(Lcom/android/launcher3/OplusWorkspace;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v1}, Lcom/android/launcher3/OplusWorkspace;->access$500(Lcom/android/launcher3/OplusWorkspace;)I

    move-result v1

    if-eq v1, v0, :cond_2a

    iget-object v1, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v1}, Lcom/android/launcher3/OplusWorkspace;->access$500(Lcom/android/launcher3/OplusWorkspace;)I

    move-result v2

    sget-object v3, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/OplusWorkspace;->access$600(Lcom/android/launcher3/OplusWorkspace;ILcom/android/launcher3/OplusWorkspace$PageState;)V

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$7;->this$0:Lcom/android/launcher3/OplusWorkspace;

    sget-object v1, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/launcher3/OplusWorkspace;->access$100(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    :cond_32
    return-void
.end method
