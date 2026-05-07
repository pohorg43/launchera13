.class public interface abstract Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;,
        Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;->Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
.end method

.method public abstract onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
.end method
