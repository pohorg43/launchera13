.class public final Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/flags/FlagListenable$FlagEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/flags/FlagManager;->dispatchListenersAndMaybeRestart(ILjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $didRequestNoRestart:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $id:I

.field private final flagId:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;->$id:I

    iput-object p2, p0, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;->$didRequestNoRestart:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;->flagId:I

    return-void
.end method


# virtual methods
.method public getFlagId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;->flagId:I

    return p0
.end method

.method public requestNoRestart()V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/flags/FlagManager$dispatchListenersAndMaybeRestart$suppressRestartList$1$event$1;->$didRequestNoRestart:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
