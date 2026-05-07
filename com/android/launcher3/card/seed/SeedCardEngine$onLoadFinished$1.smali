.class final Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/seed/SeedCardEngine;->onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/seed/SeedCardEngine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;->this$0:Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->access$getSeedling$p(Lcom/android/launcher3/card/seed/SeedCardEngine;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCurrentPageId()Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method
