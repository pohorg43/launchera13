.class public interface abstract Lcom/android/launcher3/search/SearchCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/search/OplusBaseSearchCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/search/OplusBaseSearchCallback;"
    }
.end annotation


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation
.end method
