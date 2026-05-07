.class public final Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$mSpringAnimation$1;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;-><init>(Lcom/android/launcher3/search/SearchEntryView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$mSpringAnimation$1;->this$0:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object p0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$mSpringAnimation$1;->this$0:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    invoke-static {p0, p1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->access$onUpdate(Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;F)V

    return-void
.end method
