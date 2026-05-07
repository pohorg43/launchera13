.class Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;->a:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->o:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;->b()V

    :cond_9
    return-void
.end method
