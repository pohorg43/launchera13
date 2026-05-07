.class public final Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment$mDataSetObserver$1;->this$0:Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
