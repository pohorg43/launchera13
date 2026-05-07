.class Lcom/android/launcher3/settings/PreferenceHighlighter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/settings/PreferenceHighlighter;->removeHighlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-static {p1}, Lcom/android/launcher3/settings/PreferenceHighlighter;->access$100(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
