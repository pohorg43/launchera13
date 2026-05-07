.class public interface abstract Lcom/android/rusconfig/IRusConfigParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getLocalFileConfigName()Ljava/lang/String;
.end method

.method public abstract getRusRomConfigName()Ljava/lang/String;
.end method

.method public abstract loadAndParserRusConfigData(Landroid/content/Context;)Z
.end method

.method public abstract loadLocalFileList(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract loadRusRomList(Landroid/content/Context;)Ly2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ly2/i<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseConfigData(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZTT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method

.method public abstract supportRus()Z
.end method

.method public abstract updateConfigData(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract updateCustomConfigData(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "TT;)V"
        }
    .end annotation
.end method
