.class public final synthetic Lcom/android/launcher/sellmode/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p2, p0, Lcom/android/launcher/sellmode/a;->d:I

    iput-object p3, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/sellmode/a;->c:I

    iput p3, p0, Lcom/android/launcher/sellmode/a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/sellmode/a;->a:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_4e

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void

    :pswitch_12  #0x4
    iget v0, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget v1, p0, Lcom/android/launcher/sellmode/a;->d:I

    iget-object p0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->b(IILandroid/os/Bundle;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->U(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V

    return-void

    :pswitch_2a  #0x2
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->o(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->a(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/sellmode/SaleModeWidgetController;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->a(Lcom/android/launcher/sellmode/SaleModeWidgetController;II)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/android/launcher/sellmode/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/android/launcher/sellmode/a;->c:I

    iget p0, p0, Lcom/android/launcher/sellmode/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/StackDividerService;->a(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_36  #00000001
        :pswitch_2a  #00000002
        :pswitch_1e  #00000003
        :pswitch_12  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
