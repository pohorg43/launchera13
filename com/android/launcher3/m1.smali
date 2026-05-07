.class public final synthetic Lcom/android/launcher3/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/m1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/m1;->b:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/m1;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/m1;->b:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->R(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_d
    iget-object p0, p0, Lcom/android/launcher3/m1;->b:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->F(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
