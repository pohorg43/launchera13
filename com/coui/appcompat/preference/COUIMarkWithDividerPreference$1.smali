.class Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUIMarkWithDividerPreference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
