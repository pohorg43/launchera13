.class public abstract Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IconTouchController"


# instance fields
.field private mNextController:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
.end method

.method public next(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->mNextController:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0
.end method

.method public setNext(Lcom/android/launcher3/icons/touch/AbstractIconTouchController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->mNextController:Lcom/android/launcher3/icons/touch/AbstractIconTouchController;

    return-void
.end method
