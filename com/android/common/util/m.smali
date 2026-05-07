.class public final synthetic Lcom/android/common/util/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/util/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/common/util/m;->a:I

    packed-switch v0, :pswitch_data_62

    goto :goto_54

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_13  #0x4
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->a(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x3
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherProvider;->f(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2d  #0x2
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->k(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3a  #0x1
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher/Launcher;->X(Lcom/android/launcher/Launcher;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_47  #0x0
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/util/FoldMainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/common/util/FoldMainThreadInitializedObject;->b(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_54
    iget-object v0, p0, Lcom/android/common/util/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/common/util/m;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->b(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_3a  #00000001
        :pswitch_2d  #00000002
        :pswitch_20  #00000003
        :pswitch_13  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
