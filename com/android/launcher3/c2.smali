.class public final synthetic Lcom/android/launcher3/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/c2;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/c2;->b:I

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/c2;->b:I

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/c2;->b:I

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/c2;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget p0, p0, Lcom/android/launcher3/c2;->b:I

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->m(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_d
    iget p0, p0, Lcom/android/launcher3/c2;->b:I

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->u(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/c2;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x2
    iget p0, p0, Lcom/android/launcher3/c2;->b:I

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->D(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_d
    iget p0, p0, Lcom/android/launcher3/c2;->b:I

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->m(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_6  #00000002
    .end packed-switch
.end method
