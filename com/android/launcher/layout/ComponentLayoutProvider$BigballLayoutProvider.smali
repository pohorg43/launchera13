.class final Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;
.super Lcom/android/launcher/layout/ComponentLayoutProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/ComponentLayoutProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BigballLayoutProvider"
.end annotation


# instance fields
.field private final layoutDirectory$delegate:Ly2/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/layout/ComponentLayoutProvider;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider$layoutDirectory$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider$layoutDirectory$2;-><init>(Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;->layoutDirectory$delegate:Ly2/e;

    return-void
.end method


# virtual methods
.method public getLayoutDirectory()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;->layoutDirectory$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method
