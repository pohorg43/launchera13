.class public interface abstract Lorg/hapjs/card/api/CardInfo;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getDependencies()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/hapjs/card/api/AppDependency;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon()Landroid/net/Uri;
.end method

.method public abstract getMinPlatformVersion()I
.end method

.method public abstract getPermissionDescriptions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
