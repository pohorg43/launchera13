.class public final synthetic Lcom/android/launcher3/util/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;II)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/util/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/a;->b:Lcom/android/launcher3/util/FlagOp;

    iput p2, p0, Lcom/android/launcher3/util/a;->c:I

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/util/a;->b:Lcom/android/launcher3/util/FlagOp;

    iget p0, p0, Lcom/android/launcher3/util/a;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/FlagOp;->a(Lcom/android/launcher3/util/FlagOp;II)I

    move-result p0

    return p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/util/a;->b:Lcom/android/launcher3/util/FlagOp;

    iget p0, p0, Lcom/android/launcher3/util/a;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/FlagOp;->c(Lcom/android/launcher3/util/FlagOp;II)I

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
