.class public final synthetic Lcom/android/wm/shell/startingsurface/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/res/TypedArray;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/TypedArray;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/startingsurface/d;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    return-void

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/startingsurface/d;->a:I

    packed-switch v0, :pswitch_data_34

    goto :goto_2a

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->c(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->a(Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->d(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->h(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_2a
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/d;->b:Landroid/content/res/TypedArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->f(Landroid/content/res/TypedArray;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21  #00000000
        :pswitch_18  #00000001
        :pswitch_f  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
