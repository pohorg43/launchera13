.class public interface abstract Lcom/android/launcher3/iconrender/IIconRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/IRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/iconrender/IRenderer;"
    }
.end annotation


# virtual methods
.method public abstract acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/iconrender/RenderManager;",
            "Lcom/android/launcher3/BubbleTextView;",
            "TP;)Z"
        }
    .end annotation
.end method

.method public abstract getParams()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
.end method

.method public abstract renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
.end method
