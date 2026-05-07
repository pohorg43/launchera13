.class public interface abstract Lcom/oplus/seedling/sdk/manager/DataSetCallBack;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
.end method

.method public abstract onSeedlingSetChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            ">;)V"
        }
    .end annotation
.end method
