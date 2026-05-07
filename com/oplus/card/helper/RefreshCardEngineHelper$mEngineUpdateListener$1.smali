.class public final Lcom/oplus/card/helper/RefreshCardEngineHelper$mEngineUpdateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/RefreshCardEngineHelper;-><init>(Lcom/android/launcher3/card/CommonCardView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/card/helper/RefreshCardEngineHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/RefreshCardEngineHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper$mEngineUpdateListener$1;->this$0:Lcom/oplus/card/helper/RefreshCardEngineHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartEngineUpdate()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper$mEngineUpdateListener$1;->this$0:Lcom/oplus/card/helper/RefreshCardEngineHelper;

    invoke-virtual {p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->refreshCardEngineIfNeed()V

    return-void
.end method
