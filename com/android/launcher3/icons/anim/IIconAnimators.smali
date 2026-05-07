.class public interface abstract Lcom/android/launcher3/icons/anim/IIconAnimators;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;
.implements Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;
.implements Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;
.implements Lcom/android/launcher3/icons/anim/IIconScaleAnimator;
.implements Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;
.implements Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;


# virtual methods
.method public abstract executeAfterIconDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onInterceptIconDraw(Landroid/graphics/Canvas;)Z
.end method
