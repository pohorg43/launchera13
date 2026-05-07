.class public final synthetic Lcom/android/systemui/flags/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/systemui/flags/FlagListenable$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/flags/FlagListenable$Listener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/a;->a:Lcom/android/systemui/flags/FlagListenable$Listener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/flags/a;->a:Lcom/android/systemui/flags/FlagListenable$Listener;

    check-cast p1, Lcom/android/systemui/flags/FlagManager$PerFlagListener;

    invoke-static {p0, p1}, Lcom/android/systemui/flags/FlagManager;->a(Lcom/android/systemui/flags/FlagListenable$Listener;Lcom/android/systemui/flags/FlagManager$PerFlagListener;)Z

    move-result p0

    return p0
.end method
