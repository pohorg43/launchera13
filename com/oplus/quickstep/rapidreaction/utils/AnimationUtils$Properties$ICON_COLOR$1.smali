.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$ICON_COLOR$1;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "iconColor"

    invoke-direct {p0, v0}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;)Ljava/lang/Integer;
    .registers 2

    const-string p0, "icon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->getIconColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$ICON_COLOR$1;->get(Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;I)V
    .registers 3

    const-string p0, "icon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconColor(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties$ICON_COLOR$1;->setValue(Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;I)V

    return-void
.end method
