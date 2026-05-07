.class final Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .registers 2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07026e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
