.class public final Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/seed/SeedCardEngine;->obtainView([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/seed/SeedCardEngine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V
    .registers 5

    const-string v0, "ism"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    const-string p0, "SeedCardEngine"

    const-string p1, "context is null, startSeedling failed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/card/seed/SeedCardEngine;->access$buildSeedCardIntent(Lcom/android/launcher3/card/seed/SeedCardEngine;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-interface {p1, v0, v1, p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    return-void
.end method
