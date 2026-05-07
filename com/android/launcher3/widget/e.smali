.class public final synthetic Lcom/android/launcher3/widget/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/widget/OplusWidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/OplusWidgetCell;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/widget/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/e;->b:Lcom/android/launcher3/widget/OplusWidgetCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/widget/e;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Lcom/android/launcher3/widget/OplusWidgetCell;

    invoke-static {p0}, Lcom/android/launcher3/widget/OplusWidgetCell;->a(Lcom/android/launcher3/widget/OplusWidgetCell;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Lcom/android/launcher3/widget/OplusWidgetCell;

    invoke-static {p0}, Lcom/android/launcher3/widget/OplusWidgetCell;->b(Lcom/android/launcher3/widget/OplusWidgetCell;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
