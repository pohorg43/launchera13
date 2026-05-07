.class public final synthetic Landroidx/slice/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;I)V
    .registers 3

    iput p2, p0, Landroidx/slice/widget/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/b;->b:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    return-void
.end method


# virtual methods
.method public final onSliceUpdated(Landroidx/slice/Slice;)V
    .registers 3

    iget v0, p0, Landroidx/slice/widget/b;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object p0, p0, Landroidx/slice/widget/b;->b:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->a(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Landroidx/slice/Slice;)V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
