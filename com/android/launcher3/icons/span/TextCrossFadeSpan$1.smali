.class Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/span/TextCrossFadeSpan;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$000(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$000(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;

    iget-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {v2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$100(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;->onAnimationFinished(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_35
    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$000(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
