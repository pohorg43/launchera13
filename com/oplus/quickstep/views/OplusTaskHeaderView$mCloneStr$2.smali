.class final Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;->this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;->this$0:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12037c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
