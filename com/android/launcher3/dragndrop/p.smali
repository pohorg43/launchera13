.class public final synthetic Lcom/android/launcher3/dragndrop/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/Picture;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Picture;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/dragndrop/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/p;->b:Landroid/graphics/Picture;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/p;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/p;->b:Landroid/graphics/Picture;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->b(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/p;->b:Landroid/graphics/Picture;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->d(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
