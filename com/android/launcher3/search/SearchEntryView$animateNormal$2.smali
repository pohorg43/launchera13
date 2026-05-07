.class public final Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchEntryView;->animateNormal(F[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $views:[Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntryView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryView;[Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;->this$0:Lcom/android/launcher3/search/SearchEntryView;

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;->$views:[Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;->this$0:Lcom/android/launcher3/search/SearchEntryView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/search/SearchEntryView;->access$setMIsPressing$p(Lcom/android/launcher3/search/SearchEntryView;Z)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;->$views:[Landroid/view/View;

    array-length p1, p0

    :goto_9
    if-ge v0, p1, :cond_13

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
