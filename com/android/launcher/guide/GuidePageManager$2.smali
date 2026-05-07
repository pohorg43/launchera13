.class Lcom/android/launcher/guide/GuidePageManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePageManager;->showGuidePage(Lcom/android/launcher3/Launcher;Lcom/android/launcher/guide/GuidePageManager$Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$2;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string p1, "GuidePageManager"

    const-string v0, "mGuideViewPanel.setOnClickListener"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$2;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    const-string/jumbo p1, "other_case"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    return-void
.end method
