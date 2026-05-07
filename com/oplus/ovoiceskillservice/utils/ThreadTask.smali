.class public abstract Lcom/oplus/ovoiceskillservice/utils/ThreadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public guard()Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;
    .registers 1

    sget-object p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;->ENTER:Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;

    return-object p0
.end method
