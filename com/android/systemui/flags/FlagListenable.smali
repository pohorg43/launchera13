.class public interface abstract Lcom/android/systemui/flags/FlagListenable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/FlagListenable$Listener;,
        Lcom/android/systemui/flags/FlagListenable$FlagEvent;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/systemui/flags/Flag;Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/Flag<",
            "*>;",
            "Lcom/android/systemui/flags/FlagListenable$Listener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/android/systemui/flags/FlagListenable$Listener;)V
.end method
