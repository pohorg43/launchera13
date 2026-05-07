.class Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->access$002(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;I)I

    iget-object v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    iget-object p0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->access$100(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroid/view/View;Z)V

    return-void
.end method
