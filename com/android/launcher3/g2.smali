.class public final synthetic Lcom/android/launcher3/g2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/g2;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2d

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->W(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_13  #0x1
    iget-object v0, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_20  #0x0
    iget-object v0, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object p0, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->a(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_2d
    iget-object v0, p0, Lcom/android/launcher3/g2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher3/g2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace;->r(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_13  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
