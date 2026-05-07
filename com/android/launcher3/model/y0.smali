.class public final synthetic Lcom/android/launcher3/model/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/util/LongSparseArray;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/model/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/y0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/y0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/y0;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1c

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/y0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :pswitch_11  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/y0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    :goto_1c
    iget-object p0, p0, Lcom/android/launcher3/model/y0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
