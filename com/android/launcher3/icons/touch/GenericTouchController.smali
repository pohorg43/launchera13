.class public Lcom/android/launcher3/icons/touch/GenericTouchController;
.super Lcom/android/launcher3/icons/touch/AbstractIconTouchController;
.source ""


# instance fields
.field private mProcessor:Lcom/android/launcher3/icons/touch/ITouchProcessor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/touch/ITouchProcessor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/touch/GenericTouchController;->mProcessor:Lcom/android/launcher3/icons/touch/ITouchProcessor;

    return-void
.end method


# virtual methods
.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/touch/GenericTouchController;->mProcessor:Lcom/android/launcher3/icons/touch/ITouchProcessor;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/icons/touch/ITouchProcessor;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->get(Z)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/touch/AbstractIconTouchController;->next(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object p0

    return-object p0
.end method
