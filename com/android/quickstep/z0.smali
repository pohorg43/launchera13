.class public final synthetic Lcom/android/quickstep/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/z0;->b:I

    iput-object p2, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/z0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/z0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/z0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/z0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/z0;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_36

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/quickstep/z0;->b:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->j(Ljava/util/ArrayList;ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_12  #0x2
    iget-object v0, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget p0, p0, Lcom/android/quickstep/z0;->b:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->a(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;ILandroid/view/View;)V

    return-void

    :pswitch_1e  #0x1
    iget-object v0, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    iget p0, p0, Lcom/android/quickstep/z0;->b:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/RecentsModel;->f(Lcom/android/quickstep/RecentsModel;ILjava/util/ArrayList;)V

    return-void

    :pswitch_2a  #0x0
    iget v0, p0, Lcom/android/quickstep/z0;->b:I

    iget-object p0, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/RecentsModel;->e(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/z0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIController;

    iget p0, p0, Lcom/android/quickstep/z0;->b:I

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->g(Lcom/android/wm/shell/compatui/CompatUIController;ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_1e  #00000001
        :pswitch_12  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
