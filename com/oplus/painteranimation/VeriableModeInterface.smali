.class interface abstract Lcom/oplus/painteranimation/VeriableModeInterface;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getPaintingPropertyName()Ljava/lang/String;
.end method

.method public abstract getPaintingSceneName()Ljava/lang/String;
.end method

.method public abstract setPaintingPropertyName(Ljava/lang/String;)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPaintingSceneName(Ljava/lang/String;)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
