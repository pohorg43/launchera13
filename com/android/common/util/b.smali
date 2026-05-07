.class public final synthetic Lcom/android/common/util/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 4

    iput p2, p0, Lcom/android/common/util/b;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/common/util/BitmapUtils;->b(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget v0, p0, Lcom/android/common/util/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->d(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->a(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/common/util/b;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->b(Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
