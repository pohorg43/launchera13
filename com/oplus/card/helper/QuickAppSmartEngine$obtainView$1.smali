.class public final Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/ICardEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/QuickAppSmartEngine;->obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $uiData:Lcom/oplus/card/manager/domain/model/UIData;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/QuickAppSmartEngine;Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    iput-object p2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->$uiData:Lcom/oplus/card/manager/domain/model/UIData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(ILjava/lang/Throwable;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherQuickAppCardClient onInitFailure$throwable"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {v0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherQuickAppCardClient onInitSuccess"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/card/helper/SmartEngineHelper;->mHasInitQuickApp:Z

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v0

    sget-object v1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {v0, v1}, Lcom/nearme/instant/xcard/CardClient;->setLaunchInterceptor(Lcom/nearme/instant/xcard/ILaunchInterceptor;)V

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->$view:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;->$uiData:Lcom/oplus/card/manager/domain/model/UIData;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void
.end method
