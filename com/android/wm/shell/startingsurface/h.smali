.class public final synthetic Lcom/android/wm/shell/startingsurface/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 5

    iput p4, p0, Lcom/android/wm/shell/startingsurface/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/h;->b:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/h;->c:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/wm/shell/startingsurface/h;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/startingsurface/h;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/h;->b:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/h;->c:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/h;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->b(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/h;->b:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/h;->c:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/h;->d:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;->a(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
